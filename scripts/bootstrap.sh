#!/bin/zsh

cd "$(dirname "$0")"

install_to_home() {
	rsync --exclude ".git" --exclude .gitmodules --exclude "scripts" --exclude "README.md" --exclude Makefile -av .. ~
	#echo "Syncing to home"
}

if [ "$1" "==" "--force" -o  "$1" "==" "-f" ]; then
	install_to_home
else
	REPLY=
	vared -p "This is going to overwrite configuration files in the home directory.  Is this ok? (y/n) " REPLY 
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		install_to_home
	fi
	
fi
unset install_to_home
