#!/usr/bin/env bash

THEMEDIR="$HOME/Library/Application Support/obs-studio/themes"

echo "Checking for theme directory..."
if [ ! -d "$THEMEDIR" ]; then
	echo "Generating theme directory for the first time..."
	mkdir -p "$THEMEDIR"
fi

CWD="$(dirname "${BASH_SOURCE[0]}")"

echo -e "\nPreparing to copy files..."
if ! cp -Rf "$CWD/Mintchip" "$THEMEDIR/" || ! cp -f "$CWD/mintChip.qss" "$THEMEDIR/"; then
	echo -e "\n"
	read -n 1 -r -s -p "An error has occured during a move! Press any key to exit..."
	exit
fi

echo -e "\n"
read -n 1 -r -s -p "Installation has completed! Press any key to continue..."
exit
