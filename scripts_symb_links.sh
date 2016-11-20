#!/usr/bin/env bash
#
# NAME:
#   scripts_symb_links.sh - create symbolic links for scripts
#
# SYNOPSIS:
#   scripts_symb_links.sh scripts_mask
#
# DESCRIPTION:
# Script creates symbolic links for all scripts determining by input mask
# in current directory so that it removes extension from them.
#
# LICENSE:
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
for script in $(ls $@)
do
	# Compose symbolic link name
	link="$(basename "$script")"
	link="${link%.*}"
	# Create symbolic link if such regular file does not exist
	if [ ! -f "$link" ]
	then
		ln -fsT "$script" "$link"
		echo -e "\e[1;33mSymbolic link \e[0;36m$link\e[1;33m -> \e[0;32m$script\e[0m"
	fi
done

