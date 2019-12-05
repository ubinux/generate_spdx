#!/bin/bash

if [[ "$(type -t git)" == "" ]]; then
    echo "[$0] Couldn't find git in your PATH!"
    echo "[$0] Please install git before continuing."
    exit 1
fi

if [[ "$(type -t pip3)" == "" ]]; then
    echo "[$0] Couldn't find pip3 in your PATH!"
    echo "[$0] Please install pip3 before continuing."
    exit 1
fi

if [ ! -d "./scancode-toolkit" ];then
    echo "[$0] git clone https://github.com/nexB/scancode-toolkit.git"
    git clone https://github.com/nexB/scancode-toolkit.git || exit 1
fi

