#!/bin/bash -
#title          :15_ubuntu_OSA.sh
#description    :Installs OSA using the rbac_prep scripts
#author         :Cody Bunch
#date           :2017-03-01
#version        :
#usage          :. /Users/bunchc/Dropbox/Work/projects/bootstarp/init/15_ubuntu_OSA.sh
#notes          :Defaults to the most recent stable branch unless overridden
#============================================================================

e_arrow "Installing OSA"
git clone "https://github.com/bunchc/rbac_prep" "$HOME/rbac_prep"
bash -c "cd $HOME/rbac_prep; ./rbac_prep.sh"