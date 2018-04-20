#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Much of the info comes from here
#http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
#
############################

########## Variables

dir=~/config                    # dotfiles directory
olddir=~/old_config             # old dotfiles backup directory
files="latexmkrc bashrc bash_profile gitconfig"    # list of files/folders to symlink in homedir

##########

# create old_config in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the config directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to old_config directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $old_config"
    if [ -f ~/.$file ]; then
	mv ~/.$file $olddir/.$file
    fi
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
