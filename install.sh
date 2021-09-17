#!/bin/usr/sh

# if [ `whoami` != root ]; then
#     echo Please run this script as root or using sudo
#     exit
# fi

echo "Do you have neovim nightly installed? (y/n)"

read x

if [ -d ~/.config/nvim/ ]; then
    echo "Found neovim config folder"
elif [ "$x" == "n" ]; then 
    echo "If you haven't installed neovim nightly, you can do so by doing:"
    echo "  macOS:  brew install --HEAD luajit"
    echo "          brew install --HEAD neovim"
    echo "  arch:   yay -S neovim-git (assuming yay installed)"
    echo "  other:  download from https://github.com/neovim/neovim/releases/tag/nightly"
    exit
else
    echo "Did not find neovim config folder, did you change the location from ~/.config/nvim?"
    exit
fi

echo "Copying files to neovim directory"
cp -r -v ./ ~/.config/nvim/
echo "Finished copying files"

echo "Opening Neovim. Follow instructions accordingly"

echo "Open neovim by writing nvim, additionally you can add +PackerInstall, if you do not want to do it inside of neovim"
echo "Suggested:"
echo "nvim +PackerInstall"
