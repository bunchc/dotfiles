#!/bin/bash -
#title          :50_enablearm.sh
#description    :Enable ARM for Docker on x86
#author         :Cody Bunch
#date           :2017-03-01
#version        :
#usage          :. /Users/bunchc/Dropbox/Work/projects/bootstarp/init/50_enablearm.sh
#notes          :http://blog.ubergarm.com/run-arm-docker-images-on-x86_64-hosts/
#============================================================================

if [ ! "$(which docker)" ]; then {
    e_error "Docker not found, aborting."
    exit
} else {
    e_arrow "Enabling docker support for ARM"
    sudo apt-get install -qqy \
        --force-yes \
        --no-install-recommends \
        qemu-user-static \
        binfmt-support

    update-binfmts --enable qemu-arm
    update-binfmts --enable qemu-aarch64

    docker run --rm --privileged multiarch/qemu-user-static:register --reset
} fi