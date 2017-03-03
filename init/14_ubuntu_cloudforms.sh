#!/bin/bash -
#title          :14_ubuntu_cloudforms.sh
#description    :Install CloudForms
#author         :Cody Bunch
#date           :2017-03-01
#version        :
#usage          :. /Users/bunchc/Dropbox/Work/projects/dotfiles/init/14_ubuntu_cloudforms.sh
#notes          :http://manageiq.org/docs/get-started/docker
#============================================================================

if [ ! "$(which docker)" ]; then {
    e_error "Docker not found, aborting"
    exit
} else {
    e_arrow "Installing CloudForms"
    sudo docker pull manageiq/manageiq:euwe-1
    sudo docker run --privileged -d -p 8443:443 manageiq/manageiq:euwe-1
} fi