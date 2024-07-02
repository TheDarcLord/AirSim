#!/bin/bash

# When opening `Blocks` for the first time you may encounter
# a Dialogue Box about `Blocks` not being compatible as it was built with a different version.
# ->    1. Select `More`
#       2. Select `Open without Conversion` or `Convert in Place`
# Run `repair_blocks` if you encounter:
#
#   """
#       Building would modify the following engine files:
#           xxxxx/UE4Editor.modules
#       ...
#   """
#
# Solution from Zimmy87 -> https://github.com/zimmy87
#   https://github.com/microsoft/AirSim/issues/4535#issuecomment-1136152996


# Use Unreal Engine `GenerateProjectFiles` macro to re-prepare files for Blocks
~/UnrealEngine/GenerateProjectFiles.sh ~/AirSim/Unreal/Environments/Blocks/Blocks.uproject -game

# Navigate to Blocks directory
cd ~/AirSim/Unreal/Environments/Blocks

# Rebuild Blocks
make BlocksEditor