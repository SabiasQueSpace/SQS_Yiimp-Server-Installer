#!/usr/bin/env bash

#################################################################################################################
#                                                                                                               #
# Updated by SabiasQueSpace -> https://sabiasque.space/                                                         #
#                                                                                                               #                                                                                  #                                                                                                             #
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox                                  #
# Forked from DirtyHarryDev/Yiimp-Server-Installer                                                              #
#                                                                                                               #
# This script is intended to be run like this:                                                                  #
#                                                                                                               #
#  curl https://raw.githubusercontent.com/SabiasQueSpace/SQS_Yiimp-Server-Installer/master/bootstrap.sh | bash  # 
#                                                                                                               #
#################################################################################################################


# Clone the Yiimp Server repository if it doesn't exist.

echo Installing git . . .
apt-get -q -q update
apt-get -q -q install -y git < /dev/null
echo

echo Downloading SabiasQue.Space Yiimp Server Installer v1.0. . .
git clone https://github.com/SabiasQueSpace/SQS_yiimp_server_setup "$HOME"/yiimpserver/install < /dev/null 2> /dev/null
echo

# Start setup script.
bash $HOME/yiimpserver/install/start.sh
