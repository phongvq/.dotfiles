#!/usr/bin/env bash

# sudo apt update
# 
# # link i3 config file
script_path=$(dirname $(realpath -s $0)) 
# ln -s "${script_path}/.i3" "${HOME}/.config/i3/config"
# 
# # install external tools
# # TODO: move to separate script
# 
# # cmake
# ## cmake deps
# sudo apt install g++ python3-sphinx libcairo2-dev libuv1-dev -y
# ## cmake
# sudo apt-get install apt-transport-https ca-certificates gnupg software-properties-common wget
# wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | sudo apt-key add -
# sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
# sudo apt-get update
# sudo apt-get install cmake
# 
# # xbacklight
# sudo apt install xbacklight -y
# 
# # polybar
# sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config xcb-proto python3-xcbgen libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 alsa alsa-tools libjsoncpp-dev -y
# 
# git clone https://github.com/jaagr/polybar.git
# 
# cd polybar && ./build.sh
# mkdir -p "${HOME}/.config/polybar"
ln -s "${script_path}/../polybar/launch.sh" "${HOME}/.config/polybar/launch.sh"
ln -s "${script_path}/../polybar/config" "${HOME}/.config/polybar/config"
# 
# # install i3-gaps
# sudo add-apt-repository ppa:regolith-linux/release -y
# sudo apt-get update
# sudo apt install i3-gaps -y
