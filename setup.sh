#!/bin/bash

package_manager="apt install"

sudo $package_manager fish exa

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bobthefish
set -g theme_powerline_fonts no
cp .config/fish ~/.config
cp .config/omf  ~/.config
