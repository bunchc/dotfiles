#!/bin/bash -
#title          :13_ubuntu_docker.sh
#description    :Install Docker
#author         :Cody Bunch
#date           :2017-03-01
#version        :
#usage          :. /Users/bunchc/Dropbox/Work/projects/dotfiles/init/13_ubuntu_docker.sh
#notes          :
#============================================================================

e_arrow "Installing Docker"
if (curl -sL https://get.docker.com/ | sudo bash); then {
    sudo usermod -aG docker "$USER"
    e_success "Docker installed"
} else {
    e_error "Failed to install Docker"
} fi