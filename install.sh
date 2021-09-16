#! /bin/usr/sh

if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "Do you have neovim nightly installed?"

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
cp -r ./ ~/.config/nvim/
echo "Finished copying files"

echo "Opening Neovim. Follow instructions accordingly"
nvim +PackerInstall
