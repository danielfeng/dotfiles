#!/usr/bin/env bash
# Author : danielfeng
# E-Mail : danielfancy@gmail.com

RC_FILE_LIST="zshrc vimrc"


for i in $RC_FILE_LIST; do
	if [ -L ~/.$i ]; then
		unlink ~/.$i  && ln -s `pwd`/$i ~/.$i
  elif [ -f ~/.$i ]; then
		mv ~/.$i{,.bak.`date "+%Y-%m-%d-%T"`}
		ln -s `pwd`/$i ~/.$i
	else
    echo "Not found $i"
#    exit 1
	fi
done

