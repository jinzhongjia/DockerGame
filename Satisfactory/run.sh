#!/bin/bash

GameDir="$HOME/SatisfactoryServer"
File="$HOME/config/file"

echo "container begin run"

echo "Check and download game assets"
# if [ "$(/home/steam/steamcmd/steamcmd.sh +force_install_dir "$GameDir" +login anonymous +app_update 1690800 -beta public validate +quit)" ]; then
#     echo "Download Game failed！ Try to restart container!"
#     exit 0
# fi
/home/steam/steamcmd/steamcmd.sh +force_install_dir "$GameDir" +login anonymous +app_update 1690800 -beta public validate +quit
if [ $? != 0 ]; then
	echo "Download Game failed！ Try to restart container!"
	exit 1
fi

echo "Game resource download complete"

Determine whether the file exists to determine whether it is running for the first time
if [ ! -f "$File" ]; then
  touch "$File"
  echo "Start game configuration optimization"
  # mkdir -p "$GameDir"/FactoryGame/Saved/Config/LinuxServer/
  # cp /home/steam/config/Game.ini  "$GameDir"/FactoryGame/Saved/Config/LinuxServer/
  mkdir -p /game/config
  ln -sf "/game/config" "$GameDir"/FactoryGame/Saved/Config/LinuxServer
  cp /home/steam/config/Game.ini  /game/config/
  mkdir -p /game/saves 
  ln -sf "/game/saves" "/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server"
  echo "Configuration optimization completed"
fi

# Not first time running
# if [ -f "$File" ]; then
#   echo "Backup game save"
#   cp -a "$HOME/saves/." "$HOME/backups/"
#   echo "Game save backup completed"
# fi

"$GameDir"/FactoryServer.sh
