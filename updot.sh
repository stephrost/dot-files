#!/bin/bash

if [ ! -d ~/dot-files ]
then
  echo "must first 'git clone https://github.com/stephrost/dot-files'"
else
  cp ~/.bash_{aliases,profile,prompt,exports,options,functions,path} ~/dot-files
  cp ~/.git{config,ignore,ignore_global} ~/dot-files
  cp ~/.hushlogin ~/dot-files
  cp -r ~/ew.sh ~/dot-files
  cp -r ~/Brewfile ~/dot-files
  cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/init
  cp -r ~/init ~/dot-files
fi



