#!/bin/bash

if [ ! -d ~/dot-files ]
then
  echo "must first 'git clone https://github.com/stephrost/dot-files'"
else
  cp ~/.{aliases,bash_profile,bash_prompt,exports,functions,gitconfig,gitignore,gitignore_global,hushlogin,path} ~/dot-files
  cp -r ~/ew.sh ~/dot-files
  cp -r ~/Brewfile ~/dot-files
  cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/init
  cp -r ~/init ~/dot-files
fi



