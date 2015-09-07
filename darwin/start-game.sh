#!/bin/sh
cd ..

export DYLD_LIBRARY_PATH=`pwd`/Libraries.bundle
export DYLD_FRAMEWORK_PATH="Frameworks"

# Get the user input:
read -p "Username: " ttmUsername
read -p "Password: " ttmPassword

# Export the environment variables:
export ttmUsername=$ttmUsername
export ttmPassword=$ttmPassword
export TTM_PLAYCOOKIE=$ttmUsername:$ttmPassword
export TTM_GAMESERVER=$TTM_GAMESERVER

echo "==============================="
echo "Starting Toontown..."
echo "Username: $ttmUsername"
echo "Gameserver: $TTM_GAMESERVER"
echo "==============================="

ppython -m toontown.toonbase.ClientStart

