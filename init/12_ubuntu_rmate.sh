#!/bin/bash -
#title          :12_ubuntu_rmate.sh
#description    :Installs rmate
#author         :Cody Bunch
#date           :2017-03-01
#version        :000
#usage          :. /Users/bunchc/Dropbox/Work/projects/dotfiles/init/12_ubuntu_rmate.sh
#notes          :https://github.com/textmate/rmate
#============================================================================

e_arrow "Installing rmate"
mkdir -p "$HOME"/bin
curl -Lo ~/bin/rmate \
    https://raw.githubusercontent.com/textmate/rmate/master/bin/rmate
chmod a+x ~/bin/rmate
[[ "$(ls "$HOME/.bash_profile" | wc -l 2> /dev/null)" == "1" ]] && {
    echo 'export PATH="$PATH:$HOME/bin"' >> "$HOME"/.bash_profile
}