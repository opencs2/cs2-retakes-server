#!/bin/bash

# PRE HOOK
#  Make your customisation here
# Install mods
set -e  # Propagate errors
wget -qO- https://mms.alliedmods.net/mmsdrop/2.0/mmsource-2.0.0-git1314-linux.tar.gz | tar xvz -C "${STEAMAPPDIR}"/game/csgo/ \
    &&  wget -qO- https://github.com/roflmuffin/CounterStrikeSharp/releases/download/v281/counterstrikesharp-with-runtime-build-281-linux-71ae253.zip | bsdtar -xvf- -C "${STEAMAPPDIR}"/game/csgo/ \
    && wget -qO- https://github.com/B3none/cs2-retakes/releases/download/2.0.13/cs2-retakes-2.0.13.zip | bsdtar -xvf- -C "${STEAMAPPDIR}"/game/csgo/addons/counterstrikesharp/plugins/ \
    && wget -qO- https://github.com/B3none/cs2-retakes/releases/download/2.0.13/cs2-retakes-shared-2.0.13.zip | bsdtar -xvf- -C "${STEAMAPPDIR}"/game/csgo/ \
    && wget -qO- https://github.com/B3none/cs2-instadefuse/releases/download/2.0.0/cs2-instadefuse-2.0.0.zip  | bsdtar -xvf- -C "${STEAMAPPDIR}"/game/csgo/addons/counterstrikesharp/plugins/ \
    && wget -qO- https://github.com/opencs2/cs2-agones/releases/download/0.0.3/cs2-agones.tar.gz | bsdtar -xvf- -C "${STEAMAPPDIR}"/game/csgo/addons/counterstrikesharp/plugins/ \
    && sed -i '/Game_LowViolence/a \\t\t\tGame\tcsgo/addons/metamod' ${STEAMAPPDIR}/game/csgo/gameinfo.gi

