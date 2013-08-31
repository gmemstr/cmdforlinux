#!/bin/bash
# CMD for Linux
# Copyright Gabriel Simmer
# An attempt to replicate cmd.exe from Windows to Linux
setterm -background black
setterm -foreground white
# 'cmd colours'
setterm -term cmdforlinux
# sets title to cmdforlinux
# (setterm not working on ubuntu 13.04 apparently :P)
clear
echo CMD for Linux && echo Developed by Gabriel Simmer && echo CMD version 0.0.1
for (( ; ; ))
# Looping
do
echo -n C:\\\>
read input opt
# Yay!
# Input on same line!
# Declare commands here
if [ "$input" = "help" ]; then
echo Help && echo ---
echo help: show this text
echo mkdir [name]: make a directory
echo echo [word]: repeat the word
else
if [ "$input" = "mkdir" ]; then
mkdir $opt
else
if [ "$input" = "echo" ]; then
echo $opt
else
echo Sorry, not implemented.
# commands 'n' stuff go here
fi
fi
fi
#fi's :P
done
