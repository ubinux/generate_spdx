#!/bin/bash
configPath="~/.fossdriverrc"

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

EPO=$(mktemp -d)
echo "[$0] git clone https://github.com/fossology/fossdriver.git $REPO"
git clone https://github.com/fossology/fossdriver.git $REPO || exit 1

pip3 install --user requests
pip3 install --user requests-toolbelt
pip3 install --user bs4
pip3 install --user lxml
pip3 install --user ./fossdriver

if [ -f ~/.fossdriverrc ];then
    rm -rf ~/.fossdriverrc
fi 
cp ./fossdriverrc ~/.fossdriverrc 
